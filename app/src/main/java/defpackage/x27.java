package defpackage;

import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x27 implements jl0 {
    public final ScheduleData.a a;
    public final int b;

    public x27(ScheduleData.a aVar, int i) {
        aVar.getClass();
        this.a = aVar;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x27)) {
            return false;
        }
        x27 x27Var = (x27) obj;
        return this.a == x27Var.a && this.b == x27Var.b;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        ScheduleData.a aVar = this.a;
        aVar.getClass();
        return new x27(aVar, this.b);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.toString();
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AdapterItem(batteryReqEnum=" + this.a + ", percentReq=" + this.b + ")";
    }
}
