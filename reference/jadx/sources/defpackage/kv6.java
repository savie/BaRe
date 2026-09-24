package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface kv6 {
    int count();

    void deleteAll();

    int deleteOlderThan(long j);

    List<jv6> loadLatestMessages(int i);

    zy4 loadMessagesAfterTime(long j);

    void put(jv6 jv6Var);
}
