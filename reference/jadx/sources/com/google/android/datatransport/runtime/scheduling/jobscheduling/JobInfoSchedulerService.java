package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import defpackage.cg8;
import defpackage.fg8;
import defpackage.gh;
import defpackage.h66;
import defpackage.oe0;
import defpackage.xy1;
import defpackage.ya8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    public static final /* synthetic */ int a = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        ya8.b(getApplicationContext());
        gh ghVarA = oe0.a();
        ghVarA.n(string);
        ghVarA.c = h66.b(i);
        if (string2 != null) {
            ghVarA.b = Base64.decode(string2, 0);
        }
        fg8 fg8Var = ya8.a().d;
        fg8Var.e.execute(new cg8(fg8Var, ghVarA.e(), i2, new xy1(4, this, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
