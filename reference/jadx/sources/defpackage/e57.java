package defpackage;

import org.swiftapps.swiftbackup.home.schedule.data.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class e57 extends g57 {
    public final /* synthetic */ j57 G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e57(j57 j57Var, z27 z27Var) {
        super(j57Var, z27Var);
        this.G = j57Var;
    }

    @Override // defpackage.g57
    public final void r(b bVar) {
        bVar.getClass();
        s(bVar);
        this.z.setOnClickListener(new rf4(3, this.G, bVar));
    }
}
