package defpackage;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iq1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ iq1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v8 java.lang.Object, still in use, count: 2, list:
          (r4v8 java.lang.Object) from 0x0083: PHI (r4 I:??) = (r4v5 java.lang.Object), (r4v8 java.lang.Object) binds: [B:18:0x0082, B:31:0x0083] A[DONT_GENERATE, DONT_INLINE]
          (r4v8 java.lang.Object) from 0x0075: CHECK_CAST (android.content.Intent) (r4v8 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(android.content.DialogInterface r3, int r4) {
        /*
            r2 = this;
            int r3 = r2.a
            java.lang.Object r2 = r2.b
            switch(r3) {
                case 0: goto L92;
                case 1: goto L8c;
                case 2: goto L42;
                case 3: goto L2d;
                case 4: goto L27;
                case 5: goto L16;
                default: goto L7;
            }
        L7:
            org.swiftapps.swiftbackup.tasks.ui.TaskActivity r2 = (org.swiftapps.swiftbackup.tasks.ui.TaskActivity) r2
            int r3 = org.swiftapps.swiftbackup.tasks.ui.TaskActivity.c0
            android.app.NotificationManager r3 = org.swiftapps.swiftbackup.common.NotificationHelper.d()
            r3.cancelAll()
            r2.finish()
            return
        L16:
            org.swiftapps.swiftbackup.slog.SLogActivity r2 = (org.swiftapps.swiftbackup.slog.SLogActivity) r2
            int r3 = org.swiftapps.swiftbackup.slog.SLogActivity.R
            vr6 r3 = defpackage.vr6.INSTANCE
            zs r4 = new zs
            r0 = 13
            r4.<init>(r2, r0)
            r3.clearMessages(r2, r4)
            return
        L27:
            sa1 r2 = (defpackage.sa1) r2
            r2.finish()
            return
        L2d:
            org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity r2 = (org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity) r2
            int r3 = org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity.Z
            dm3 r2 = r2.U()
            zn4 r3 = defpackage.zn4.a
            kf r3 = new kf
            r4 = 28
            r3.<init>(r2, r4)
            defpackage.zn4.c(r3)
            return
        L42:
            org.swiftapps.swiftbackup.cloud.connect.CsActivity r2 = (org.swiftapps.swiftbackup.cloud.connect.CsActivity) r2
            int r3 = org.swiftapps.swiftbackup.cloud.connect.CsActivity.P0
            r2.getClass()
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = "android.settings.PRIVATE_DNS_SETTINGS"
            r3.<init>(r4)
            android.content.Intent r4 = new android.content.Intent
            java.lang.String r0 = "android.settings.WIRELESS_SETTINGS"
            r4.<init>(r0)
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "android.settings.SETTINGS"
            r0.<init>(r1)
            android.content.Intent[] r3 = new android.content.Intent[]{r3, r4, r0}
            java.util.List r3 = defpackage.fl1.A0(r3)
            java.util.Iterator r3 = r3.iterator()
        L6a:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L82
            java.lang.Object r4 = r3.next()
            r0 = r4
            android.content.Intent r0 = (android.content.Intent) r0
            android.content.pm.PackageManager r1 = r2.getPackageManager()
            android.content.ComponentName r0 = r0.resolveActivity(r1)
            if (r0 == 0) goto L6a
            goto L83
        L82:
            r4 = 0
        L83:
            android.content.Intent r4 = (android.content.Intent) r4
            if (r4 != 0) goto L88
            goto L8b
        L88:
            r2.startActivity(r4)     // Catch: java.lang.Throwable -> L8b
        L8b:
            return
        L8c:
            bt3 r2 = (defpackage.bt3) r2
            r2.invoke()
            return
        L92:
            org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity r2 = (org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity) r2
            int r3 = org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity.V
            br1 r3 = defpackage.br1.a
            qq1 r3 = r2.V()
            org.swiftapps.swiftbackup.appconfigs.data.Config r3 = r3.j()
            java.lang.String r3 = r3.getId()
            dk r4 = new dk
            r0 = 19
            r4.<init>(r3, r0)
            defpackage.zn4.c(r4)
            r2.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.iq1.onClick(android.content.DialogInterface, int):void");
    }
}
