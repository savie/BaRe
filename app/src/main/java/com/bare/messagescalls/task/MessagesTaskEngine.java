package com.bare.messagescalls.task;

import java.util.Collections;
import java.util.List;

/**
 * Reference ff5 (MessagesTask) execution-planning boundary.
 *
 * This class closes the domain/task consumer without claiming the downstream
 * archive/native/cloud runtime. It models the Reference decisions that cross
 * from Messages selection into the task: default-SMS prerequisite, MMS policy,
 * compression policy, local artifact naming and optional cloud handoff.
 */
public final class MessagesTaskEngine {
    public enum Decision {
        READY, NO_DATA, PERMISSION_REQUIRED, PROVIDER_UNAVAILABLE
    }

    public enum Operation {
        BACKUP, RESTORE
    }

    public record TaskPlan(
            Operation operation,
            int conversationCount,
            int messageCount,
            boolean includeMms,
            int compressionLevel,
            String artifactName,
            boolean cloudHandoff,
            Decision decision) {
        public boolean isReady() {
            return decision == Decision.READY;
        }
    }

    public Decision plan(int messages, boolean permission, boolean provider) {
        return buildPlan(Operation.BACKUP, 0, messages, true, -1, false).decision();
    }

    public TaskPlan buildPlan(
            Operation operation,
            int conversationCount,
            int messages,
            boolean includeMms,
            int compressionLevel,
            boolean cloudHandoff) {
        if (operation == null) {
            return new TaskPlan(Operation.BACKUP, 0, 0, includeMms,
                    normalizeCompression(compressionLevel), null, cloudHandoff,
                    Decision.PROVIDER_UNAVAILABLE);
        }
        if (messages <= 0) {
            return new TaskPlan(operation, Math.max(0, conversationCount), 0,
                    includeMms, normalizeCompression(compressionLevel), null,
                    cloudHandoff, Decision.NO_DATA);
        }
        String artifact = operation == Operation.BACKUP
                ? buildArtifactName(conversationCount, messages)
                : null;
        return new TaskPlan(
                operation,
                Math.max(0, conversationCount),
                messages,
                includeMms,
                normalizeCompression(compressionLevel),
                artifact,
                cloudHandoff,
                Decision.READY);
    }

    /**
     * Reference ff5 reads compression_level_msgs and falls back to the
     * supported default when the stored value is not one of the supported
     * levels. The exact supported-level list is intentionally kept at the
     * settings owner; -1 means unresolved/default here.
     */
    public static int normalizeCompression(int level) {
        return level > 0 ? level : -1;
    }

    /** Reference v3 local artifact shape: v3.<time>.<conversations>.<messages>.<device>.msg */
    public static String buildArtifactName(int conversationCount, int messageCount) {
        if (conversationCount < 0 || messageCount < 0) {
            throw new IllegalArgumentException("negative message statistics");
        }
        return "v3.<timestamp>." + conversationCount + "." + messageCount
                + ".<device>.msg";
    }

    public static List<String> requiredConsumerBoundaries(boolean includeMms,
                                                            boolean cloudHandoff) {
        java.util.ArrayList<String> result = new java.util.ArrayList<>();
        result.add("sms-content-provider");
        result.add("reference-message-archive");
        if (includeMms) result.add("mms-cache-data");
        if (cloudHandoff) result.add("cloud-provider");
        return Collections.unmodifiableList(result);
    }
}
