package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.google.android.material.textfield.TextInputEditText;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tb3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tb3(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0055  */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        String string;
        AuthorizationAgent authorizationAgentValueOf;
        int i2 = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                int i3 = FilenSignInActivity.N;
                ec3 ec3VarO = ((FilenSignInActivity) obj2).V();
                String string2 = nq7.H0(String.valueOf(((TextInputEditText) ((l39) obj).c).getText())).toString();
                string2.getClass();
                ex6 ex6Var = ec3VarO.e;
                if (pe4.d(ex6Var.d(), bc3.a)) {
                    ec3VarO.j = "";
                    ex6Var.k(yb3.a);
                    ec3VarO.h(R.string.processing_please_wait);
                    zn4 zn4Var = zn4.a;
                    zn4.b(ec3VarO.g, new dc3(ec3VarO, string2, null));
                    return;
                }
                return;
            case 1:
                fs4 fs4Var = (fs4) obj;
                dialogInterface.dismiss();
                for (t80 t80Var : (ArrayList) obj2) {
                    if (t80Var.a == i) {
                        AuthorizationAgent authorizationAgent = t80Var.b;
                        try {
                            SharedPreferences sharedPreferences = cz4.f;
                            if (sharedPreferences == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            string = sharedPreferences.getString("onedrive_auth_agent", null);
                            if (string != null && string.length() != 0) {
                                try {
                                    authorizationAgentValueOf = AuthorizationAgent.valueOf(string);
                                } catch (Exception unused) {
                                    authorizationAgentValueOf = null;
                                }
                                if (authorizationAgentValueOf == null) {
                                    authorizationAgentValueOf = AuthorizationAgent.BROWSER;
                                }
                                break;
                            } else {
                                authorizationAgentValueOf = AuthorizationAgent.BROWSER;
                            }
                            if (authorizationAgent != authorizationAgentValueOf) {
                                String string3 = authorizationAgent.toString();
                                SharedPreferences.Editor editor = cz4.k;
                                if (editor == null) {
                                    pe4.F("editor");
                                    throw null;
                                }
                                editor.putString("onedrive_auth_agent", string3).apply();
                                fs4Var.r();
                                return;
                            }
                            return;
                        } catch (ClassCastException unused2) {
                            string = null;
                        }
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            default:
                ((mt3) obj2).invoke(((lh6) obj).a);
                return;
        }
    }
}
