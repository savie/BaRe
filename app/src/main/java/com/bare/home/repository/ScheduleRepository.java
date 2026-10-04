package com.bare.home.repository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;

/** Persistence boundary for the Reference ScheduleData shape. */
public interface ScheduleRepository {
    ScheduleState load();
    void save(ScheduleState state);

    final class ScheduleState {
        public int startHour = 3;
        public int startMinute = 0;
        public int batteryRequirement = 0;
        public int batteryPercentRequirement = 50;
        public boolean enabled;
        public String globalError;
        public final List<String> orderIds = new ArrayList<>();
        public final List<String> appsQuickActionIds = new ArrayList<>();
        public final List<String> appsLabelIds = new ArrayList<>();
        public final List<String> appConfigIds = new ArrayList<>();
        public final List<String> messageIds = new ArrayList<>();
        public final List<String> callLogIds = new ArrayList<>();
        public final List<String> wallIds = new ArrayList<>();
        public final List<String> wifiIds = new ArrayList<>();
        public final List<String> folderIds = new ArrayList<>();
        /** Full Reference-compatible schedule item payloads, kept separate from the legacy ID lists. */
        public final List<ScheduleItemState> items = new ArrayList<>();

        public static final class ScheduleItemState {
            public String id;
            public String type;
            public String repeatDays;
            public boolean enabled = true;
            public String locations;
            public String syncOption;
            public String configId;
            public String appParts;
            public String labelIds;
            public String quickActionIntIds;
            public String allowedApps;
            public boolean backupAllFolders;
            public String backupStrategy;
            public final List<FolderItemState> folderItems = new ArrayList<>();

            public ScheduleItemState copy() {
                ScheduleItemState copy = new ScheduleItemState();
                copy.id = id;
                copy.type = type;
                copy.repeatDays = repeatDays;
                copy.enabled = enabled;
                copy.locations = locations;
                copy.syncOption = syncOption;
                copy.configId = configId;
                copy.appParts = appParts;
                copy.labelIds = labelIds;
                copy.quickActionIntIds = quickActionIntIds;
                copy.allowedApps = allowedApps;
                copy.backupAllFolders = backupAllFolders;
                copy.backupStrategy = backupStrategy;
                for (FolderItemState item : folderItems) {
                    if (item != null) copy.folderItems.add(item.copy());
                }
                return copy;
            }
        }

        public static final class FolderItemState {
            public String id;
            public String displayName;
            public String sourceFolder;
            public long setupCreationTime;

            public FolderItemState copy() {
                FolderItemState copy = new FolderItemState();
                copy.id = id;
                copy.displayName = displayName;
                copy.sourceFolder = sourceFolder;
                copy.setupCreationTime = setupCreationTime;
                return copy;
            }
        }

        public ScheduleState copy() {
            ScheduleState copy = new ScheduleState();
            copy.startHour = startHour;
            copy.startMinute = startMinute;
            copy.batteryRequirement = batteryRequirement;
            copy.batteryPercentRequirement = batteryPercentRequirement;
            copy.enabled = enabled;
            copy.globalError = globalError;
            copy.orderIds.addAll(orderIds);
            copy.appsQuickActionIds.addAll(appsQuickActionIds);
            copy.appConfigIds.addAll(appConfigIds);
            copy.appsLabelIds.addAll(appsLabelIds);
            copy.messageIds.addAll(messageIds);
            copy.callLogIds.addAll(callLogIds);
            copy.wallIds.addAll(wallIds);
            copy.wifiIds.addAll(wifiIds);
            copy.folderIds.addAll(folderIds);
            for (ScheduleItemState item : items) {
                if (item != null) copy.items.add(item.copy());
            }
            return copy;
        }

        /**
         * Mirrors Reference ScheduleData order normalization: keep existing valid
         * IDs first, then append known item IDs that are not yet ordered.
         */
        public List<String> getNormalizedOrderIds() {
            LinkedHashSet<String> validIds = new LinkedHashSet<>();
            addIds(validIds, appsQuickActionIds);
            addIds(validIds, appsLabelIds);
            addIds(validIds, appConfigIds);
            addIds(validIds, messageIds);
            addIds(validIds, callLogIds);
            addIds(validIds, wallIds);
            addIds(validIds, wifiIds);
            addIds(validIds, folderIds);
            for (ScheduleItemState item : items) {
                if (item != null && item.id != null && !item.id.isEmpty()) validIds.add(item.id);
            }
            LinkedHashSet<String> normalized = new LinkedHashSet<>();
            for (String id : orderIds) {
                if (id != null && validIds.contains(id)) normalized.add(id);
            }
            for (ScheduleItemState item : items) {
                if (item != null && item.id != null && !item.id.isEmpty()) normalized.add(item.id);
            }
            return new ArrayList<>(normalized);
        }

        private static void addIds(LinkedHashSet<String> target, List<String> values) {
            if (values == null) return;
            for (String value : values) {
                if (value != null && !value.isEmpty()) target.add(value);
            }
        }

        public List<String> getOrderIds() {
            return Collections.unmodifiableList(orderIds);
        }
    }
}
