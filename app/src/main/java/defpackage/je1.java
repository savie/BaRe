package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class je1 {
    public static final ai6 a = new ai6("[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}", 0);

    public static final String a(rd1 rd1Var) {
        switch (ie1.a[rd1Var.ordinal()]) {
            case 1:
                return "Not run";
            case 2:
                return "Running";
            case 3:
                return "Passed";
            case 4:
                return "Failed";
            case 5:
                return "Action required";
            case 6:
                return "Skipped";
            default:
                q.j();
                return null;
        }
    }

    public static final String b(rd1 rd1Var) {
        switch (ie1.a[rd1Var.ordinal()]) {
            case 1:
                return "○";
            case 2:
                return "…";
            case 3:
                return "✅";
            case 4:
                return "❌";
            case 5:
                return "⚠️";
            case 6:
                return "➖";
            default:
                q.j();
                return null;
        }
    }
}
