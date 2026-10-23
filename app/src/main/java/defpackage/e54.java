package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class e54 extends g54 {
    public final xp3 u;
    public final /* synthetic */ h54 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e54(h54 h54Var, xp3 xp3Var) {
        super((ConstraintLayout) xp3Var.b);
        this.v = h54Var;
        this.u = xp3Var;
    }

    @Override // defpackage.g54
    public final void r(final s54 s54Var, final int i) {
        String sourceFolder;
        String displayName;
        s54Var.getClass();
        qr qrVar = tr.n0;
        xp3 xp3Var = this.u;
        Context context = ((ConstraintLayout) xp3Var.b).getContext();
        context.getClass();
        int iC = qr.c(context);
        ImageView imageView = (ImageView) xp3Var.d;
        final h54 h54Var = this.v;
        h54.y(h54Var, imageView, s54Var);
        TextView textView = (TextView) xp3Var.e;
        textView.setTextColor(iC);
        FolderItem folderItem = s54Var.p;
        if ((folderItem == null || (sourceFolder = folderItem.getSourceFolder()) == null) && (sourceFolder = s54Var.d) == null) {
            sourceFolder = "";
        }
        textView.setText(sourceFolder);
        TextView textView2 = (TextView) xp3Var.f;
        if (folderItem == null || (displayName = folderItem.getDisplayName()) == null) {
            displayName = s54Var.c;
        }
        textView2.setText(displayName);
        ((ConstraintLayout) xp3Var.c).setOnClickListener(new View.OnClickListener() { // from class: d54
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = h54Var.j;
                if (qt3Var != null) {
                    qt3Var.invoke(s54Var, Integer.valueOf(i));
                }
            }
        });
    }
}
