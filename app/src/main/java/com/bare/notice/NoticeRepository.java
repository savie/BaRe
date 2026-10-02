package com.bare.notice;

import android.content.Context;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class NoticeRepository {
    private final Context context;
    private final List<NoticeItem> items = new ArrayList<>();

    public NoticeRepository(Context context) {
        this.context = context.getApplicationContext();
    }

    /**
     * F92 content input boundary. Backend notice loading is downstream;
     * supplied items are filtered using the verified Reference rules.
     */
    public synchronized void setItems(List<NoticeItem> notices) {
        items.clear();
        if (notices != null) items.addAll(notices);
    }

    public synchronized List<NoticeItem> getVisibleNotices() {
        return getVisibleNotices(false);
    }

    public synchronized List<NoticeItem> getVisibleNotices(boolean includeSeen) {
        List<NoticeItem> result = new ArrayList<>();
        for (NoticeItem item : items) {
            if (item != null && item.shouldShowToUser(context, includeSeen)) {
                result.add(item);
            }
        }

        result.sort(Comparator.comparingInt(item -> priorityOrder(item.priority)));
        return result;
    }

    public synchronized void dismiss(String noticeId) {
        if (noticeId == null || noticeId.isEmpty()) return;
        for (NoticeItem item : items) {
            if (item != null && noticeId.equals(item.id)) {
                item.markSeen(context);
                break;
            }
        }
    }

    private static int priorityOrder(NoticeItem.Priority priority) {
        if (priority == NoticeItem.Priority.HIGH) return 0;
        if (priority == NoticeItem.Priority.NORMAL) return 1;
        return 2;
    }
}
