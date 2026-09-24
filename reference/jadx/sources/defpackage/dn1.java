package defpackage;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "CompleteMultipartUpload")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class dn1 {

    @gt2(inline = true, name = "Part")
    private List<gx5> a;

    public dn1(gx5[] gx5VarArr) {
        Objects.requireNonNull(gx5VarArr, "parts must not be null");
        if (gx5VarArr.length != 0) {
            this.a = ki8.f(Arrays.asList(gx5VarArr));
        } else {
            c6.f("parts cannot be empty");
            throw null;
        }
    }
}
