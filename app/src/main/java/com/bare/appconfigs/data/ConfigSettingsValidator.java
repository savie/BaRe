package com.bare.appconfigs.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public final class ConfigSettingsValidator {
    private ConfigSettingsValidator() {
    }

    /**
     * Reference-backed label normalization: stale label IDs are removed.
     */
    public static List<String> normalizeLabelIds(
            List<String> configuredLabelIds,
            Set<String> knownLabelIds) {
        if (configuredLabelIds == null || configuredLabelIds.isEmpty()) {
            return Collections.emptyList();
        }

        Set<String> known = knownLabelIds == null
                ? Collections.emptySet()
                : new HashSet<>(knownLabelIds);
        List<String> result = new ArrayList<>();

        for (String labelId : configuredLabelIds) {
            if (labelId != null && known.contains(labelId) && !result.contains(labelId)) {
                result.add(labelId);
            }
        }
        return result;
    }

    /**
     * Reference-backed normalized copy with one cloud destination removed.
     */
    public static List<String> removeCloudLocation(
            List<String> cloudLocations,
            String cloudLocation) {
        if (cloudLocations == null || cloudLocations.isEmpty()) {
            return Collections.emptyList();
        }

        List<String> result = new ArrayList<>(cloudLocations);
        if (cloudLocation != null) {
            result.removeIf(cloudLocation::equals);
        }
        return result;
    }

    /**
     * Reference ApplyData validity gate. Explicitly allowed invalid data remains
     * admissible; ordinary invalid data is rejected.
     */
    public static boolean isApplyDataAllowed(boolean valid, boolean explicitlyAllowedInvalid) {
        return valid || explicitlyAllowedInvalid;
    }

    /**
     * Reference aggregate filtering: invalid configuration entries are removed
     * rather than silently converted into valid state.
     */
    public static <T> List<T> filterValidConfigs(
            List<T> configs,
            Predicate<T> validity) {
        if (configs == null || configs.isEmpty()) {
            return Collections.emptyList();
        }
        if (validity == null) {
            throw new NullPointerException("validity");
        }

        List<T> result = new ArrayList<>();
        for (T config : configs) {
            if (config != null && validity.test(config)) {
                result.add(config);
            }
        }
        return result;
    }
}
