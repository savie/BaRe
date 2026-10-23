package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Progress", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class b86 extends wm7 {
    public b86(@at2(name = "BytesScanned", required = false) Long l, @at2(name = "BytesProcessed", required = false) Long l2, @at2(name = "BytesReturned", required = false) Long l3) {
        super(l, l2, l3);
    }

    @Override // defpackage.wm7
    public String toString() {
        return eq3.k("Progress{", super.d(), "}");
    }
}
