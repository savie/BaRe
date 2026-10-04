package com.bare.wifi;

import android.os.Build;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class WifiRootXmlRepository {
    private static final String ROOT_PATH_Q = "/data/misc/wifi/WifiConfigStore.xml";
    private static final String ROOT_PATH_R_PLUS = "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml";
    private static final Pattern VALUE = Pattern.compile(
            "<(string|boolean|int|long)\\s+name="([^"]+)"\\s+value="([^"]*)"\\s*/>");

    private final CommandRunner commandRunner;

    public WifiRootXmlRepository() {
        this(new SuCommandRunner());
    }

    public WifiRootXmlRepository(CommandRunner commandRunner) {
        if (commandRunner == null) throw new IllegalArgumentException("commandRunner");
        this.commandRunner = commandRunner;
    }

    public Result read() {
        String path = Build.VERSION.SDK_INT >= 30 ? ROOT_PATH_R_PLUS : ROOT_PATH_Q;
        CommandResult copied = commandRunner.readFile(path);
        if (!copied.success) return Result.failure(WifiAccessContract.Failure.ROOT_COPY_FAILED);
        if (copied.output == null || copied.output.trim().isEmpty()) {
            return Result.failure(WifiAccessContract.Failure.ROOT_PARSE_FAILED);
        }
        if (!copied.output.contains("<WifiConfigStoreData")) {
            return Result.failure(WifiAccessContract.Failure.ROOT_PARSE_FAILED);
        }

        try {
            return Result.success(parse(copied.output));
        } catch (RuntimeException e) {
            return Result.failure(WifiAccessContract.Failure.ROOT_PARSE_FAILED);
        }
    }

    static List<WifiCredentialState> parse(String xml) {
        List<WifiCredentialState> result = new ArrayList<>();
        String[] lines = xml.split("\\R");
        StringBuilder network = null;

        for (String line : lines) {
            if (line.contains("<Network>")) network = new StringBuilder();
            if (network != null) network.append(line).append('\\n');
            if (network != null && line.contains("</Network>")) {
                WifiCredentialState item = parseNetwork(network.toString());
                if (item != null && item.isAvailable()) result.add(item);
                network = null;
            }
        }
        return result;
    }

    private static WifiCredentialState parseNetwork(String network) {
        String ssid = value(network, "WifiConfiguration", "SSID");
        if (ssid == null || ssid.isEmpty()) return null;

        String psk = value(network, "WifiConfiguration", "PreSharedKey");
        String eap = value(network, "WifiEnterpriseConfiguration", "EapMethod");
        String phase2 = value(network, "WifiEnterpriseConfiguration", "Phase2Method");
        String identity = value(network, "WifiEnterpriseConfiguration", "Identity");
        String anonIdentity = value(network, "WifiEnterpriseConfiguration", "AnonIdentity");
        String enterprisePassword = value(network, "WifiEnterpriseConfiguration", "Password");
        String caCert = value(network, "WifiEnterpriseConfiguration", "CaCert");

        String quotedSsid = ssid.startsWith(""") && ssid.endsWith(""")
                ? ssid : """ + ssid + """;

        return new WifiCredentialState(
                quotedSsid, psk, true, false,
                keyManagementFor(eap, phase2, identity, anonIdentity, enterprisePassword, caCert, psk),
                null, null, null,
                eap, phase2, identity, anonIdentity, enterprisePassword, caCert);
    }

    private static BitSet keyManagementFor(
            String eap, String phase2, String identity, String anonIdentity,
            String enterprisePassword, String caCert, String psk) {
        BitSet result = new BitSet();
        boolean enterprise = notBlank(eap) || notBlank(phase2) || notBlank(identity)
                || notBlank(anonIdentity) || notBlank(enterprisePassword) || notBlank(caCert);
        if (enterprise) result.set(2);
        else if (notBlank(psk)) result.set(1);
        else result.set(0);
        return result;
    }

    private static String value(String network, String section, String name) {
        String start = "<" + section;
        int sectionStart = network.indexOf(start);
        if (sectionStart < 0) return null;
        int sectionEnd = network.indexOf("</" + section + ">", sectionStart);
        if (sectionEnd < 0) sectionEnd = network.length();

        Matcher matcher = VALUE.matcher(network.substring(sectionStart, sectionEnd));
        while (matcher.find()) {
            if (name.equals(matcher.group(2))) return unescape(matcher.group(3));
        }
        return null;
    }

    private static String unescape(String value) {
        return value.replace("&quot;", """)
                .replace("&apos;", "'")
                .replace("&lt;", "<")
                .replace("&gt;", ">")
                .replace("&amp;", "&");
    }

    private static boolean notBlank(String value) {
        return value != null && !value.isEmpty();
    }

    public interface CommandRunner {
        CommandResult readFile(String absolutePath);
    }

    public static final class SuCommandRunner implements CommandRunner {
        @Override
        public CommandResult readFile(String absolutePath) {
            try {
                Process process = new ProcessBuilder("su", "-c", "cat " + shellQuote(absolutePath))
                        .redirectErrorStream(true).start();
                StringBuilder output = new StringBuilder();
                try (BufferedReader reader = new BufferedReader(
                        new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
                    String line;
                    while ((line = reader.readLine()) != null) output.append(line).append('\\n');
                }
                int exit = process.waitFor();
                return new CommandResult(exit == 0, output.toString(), exit);
            } catch (IOException e) {
                return new CommandResult(false, "", -1);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new CommandResult(false, "", -1);
            } catch (SecurityException e) {
                return new CommandResult(false, "", -1);
            }
        }

        private static String shellQuote(String value) {
            return "'" + value.replace("'", "'\\''") + "'";
        }
    }

    public static final class CommandResult {
        final boolean success;
        final String output;
        final int exitCode;
        CommandResult(boolean success, String output, int exitCode) {
            this.success = success;
            this.output = output;
            this.exitCode = exitCode;
        }
    }

    public static final class Result {
        private final List<WifiCredentialState> items;
        private final WifiAccessContract.Failure failure;
        private Result(List<WifiCredentialState> items, WifiAccessContract.Failure failure) {
            this.items = items;
            this.failure = failure;
        }
        static Result success(List<WifiCredentialState> items) {
            return new Result(Collections.unmodifiableList(new ArrayList<>(items)), WifiAccessContract.Failure.NONE);
        }
        static Result failure(WifiAccessContract.Failure failure) {
            return new Result(Collections.emptyList(), failure);
        }
        public List<WifiCredentialState> getItems() { return items; }
        public WifiAccessContract.Failure getFailure() { return failure; }
        public boolean isSuccess() { return failure == WifiAccessContract.Failure.NONE; }
    }
}