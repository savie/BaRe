package com.bare.settings;

import android.content.Context;

import com.bare.R;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class LicenseParser {
    private static final Pattern METADATA = Pattern.compile("^(\\d+):(\\d+)\\s+(.+)$");

    private LicenseParser() {
    }

    public static List<String> parse(Context context) {
        try {
            byte[] licenses = readAll(
                    context.getResources().openRawResource(R.raw.third_party_licenses));

            List<String> rows = new ArrayList<>();
            Set<String> names = new HashSet<>();

            try (InputStream metadata = context.getResources()
                    .openRawResource(R.raw.third_party_license_metadata);
                 BufferedReader reader = new BufferedReader(
                         new InputStreamReader(metadata, StandardCharsets.UTF_8), 8192)) {

                String line;
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    if (line.isEmpty()) continue;

                    Matcher matcher = METADATA.matcher(line);
                    if (!matcher.matches()) continue;

                    int offset;
                    int length;
                    try {
                        offset = Integer.parseInt(matcher.group(1));
                        length = Integer.parseInt(matcher.group(2));
                    } catch (NumberFormatException ignored) {
                        continue;
                    }

                    String name = matcher.group(3).trim();
                    if (name.isEmpty() || offset < 0 || length < 0
                            || offset > licenses.length - length) {
                        continue;
                    }

                    String text = new String(
                            licenses, offset, length, StandardCharsets.UTF_8).trim();
                    if (text.isEmpty()) continue;

                    String key = name.toLowerCase(Locale.ROOT);
                    if (names.add(key)) {
                        rows.add(name + "\n\n" + text);
                    }
                }
            }

            rows.sort(Comparator.comparing(
                    value -> value.substring(0, value.indexOf("\n\n"))
                            .toLowerCase(Locale.ROOT)));
            return rows;
        } catch (Exception ignored) {
            return new ArrayList<>();
        }
    }

    private static byte[] readAll(InputStream input) throws Exception {
        try (InputStream in = input;
             ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[8192];
            int read;
            while ((read = in.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            return out.toByteArray();
        }
    }
}
