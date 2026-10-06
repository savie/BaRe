package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.OnSuccessListener;
import com.pcloud.sdk.internal.a;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Objects;
import java.util.function.UnaryOperator;
import okhttp3.Response;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mb implements OnSuccessListener, er5, hm6, h9 {
    public final /* synthetic */ Object a;

    public /* synthetic */ mb(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        eh8 eh8Var = (eh8) ((a) this.a).f(response, eh8.class);
        return new wf6(eh8Var.g(), eh8Var.d(), eh8Var.h(), eh8Var.e(), eh8Var.f());
    }

    public long b() throws IOException {
        Path path = ((File) this.a).toPath();
        OpenOption[] openOptionArr = py5.a;
        Objects.requireNonNull(path, "path");
        if (!Files.exists(path, new LinkOption[0])) {
            d6.e(path, "'", "File system element for parameter 'path' does not exist: '");
            return 0L;
        }
        if (!Files.isDirectory(path, new LinkOption[0])) {
            return Files.size(path);
        }
        int i = ky1.f;
        jy1 jy1Var = new jy1();
        jy1Var.k = new gy1();
        jy1Var.n = new iu7(FileVisitResult.TERMINATE, FileVisitResult.CONTINUE);
        jy1Var.p = ob8.b;
        jy1Var.q = UnaryOperator.identity();
        jy1Var.k = new gy1();
        ky1 ky1Var = new ky1(jy1Var);
        Files.walkFileTree(path, ky1Var);
        return ky1Var.b.a.a;
    }

    @Override // defpackage.er5
    public Object construct() {
        Type type = (Type) this.a;
        if (!(type instanceof ParameterizedType)) {
            throw new ik4("Invalid EnumSet type: " + type);
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new ik4("Invalid EnumSet type: " + type);
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        m37 m37Var = (m37) this.a;
        ArrayList arrayList = (ArrayList) obj;
        Log.d(m37Var.a, "registerForActivityResult=" + (arrayList != null ? el1.Y0(arrayList, null, null, null, null, 63) : null));
        ScheduleItem.AppsLabels appsLabels = m37Var.o().s;
        if (appsLabels != null) {
            q47 q47VarP = m37Var.p();
            ScheduleItem.AppsLabels appsLabelsCopy$default = ScheduleItem.AppsLabels.copy$default(appsLabels, null, null, arrayList != null ? el1.Y0(arrayList, null, null, null, null, 63) : null, null, null, null, null, false, 251, null);
            appsLabelsCopy$default.getClass();
            zn4.c(new rm(15, q47VarP, appsLabelsCopy$default));
        }
        m37Var.o().s = null;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((ro) this.a).q(((dx3) obj).a);
    }
}
