package com.bare.manage;

/**
 * F125 → F105 cleanup routing boundary.
 *
 * This class decides whether a reclaim request may be handed to the concrete
 * deletion owner. It never deletes files itself.
 */
public final class ManageSpaceReclaimRouter {
    public enum Decision {
        EMPTY,
        BLOCKED_PROTECTION_UNKNOWN,
        BLOCKED_PROTECTED,
        READY
    }

    public Decision evaluate(ManageSpaceReclaimItem item) {
        if (item == null || !item.hasReclaimableData()) {
            return Decision.EMPTY;
        }
        if (item.protectionState == ManageSpaceReclaimItem.ProtectionState.UNKNOWN) {
            return Decision.BLOCKED_PROTECTION_UNKNOWN;
        }
        if (item.protectionState == ManageSpaceReclaimItem.ProtectionState.PROTECTED) {
            return Decision.BLOCKED_PROTECTED;
        }
        return Decision.READY;
    }
}
