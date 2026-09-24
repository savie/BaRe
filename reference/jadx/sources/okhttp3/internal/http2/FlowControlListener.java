package okhttp3.internal.http2;

import okhttp3.internal.http2.flowcontrol.WindowCounter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface FlowControlListener {
    void a(WindowCounter windowCounter);

    void b(WindowCounter windowCounter);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class None implements FlowControlListener {
        public static final None a = new None();

        @Override // okhttp3.internal.http2.FlowControlListener
        public final void b(WindowCounter windowCounter) {
            windowCounter.getClass();
        }

        @Override // okhttp3.internal.http2.FlowControlListener
        public final void a(WindowCounter windowCounter) {
        }
    }
}
