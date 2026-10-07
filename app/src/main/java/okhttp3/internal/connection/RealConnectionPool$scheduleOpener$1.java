package okhttp3.internal.connection;

import okhttp3.internal.concurrent.Task;

public final class RealConnectionPool$scheduleOpener$1 extends Task {
    public final RealConnectionPool.AddressState e;

    public RealConnectionPool$scheduleOpener$1(RealConnectionPool owner, RealConnectionPool.AddressState state, String name) {
        super(name, true);
        this.e = state;
    }

    @Override
    public final long a() {
        int i = RealConnectionPool.h;
        RealConnectionPool.AddressState state = this.e;
        state.getClass();
        throw null;
    }
}