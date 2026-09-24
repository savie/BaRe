package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ClientCertRequest;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.fragment.app.u;
import com.microsoft.identity.common.logging.Logger;
import defpackage.ra;
import defpackage.va;
import defpackage.wa;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardCertPickerDialog extends SmartcardDialog {
    private final ICancelCbaCallback mCancelCbaCallback;
    private final PositiveButtonListener mPositiveButtonListener;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardCertPickerDialog$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Runnable {
        final /* synthetic */ CertDetailsAdapter val$certAdapter;

        public AnonymousClass1(CertDetailsAdapter certDetailsAdapter) {
            this.val$certAdapter = certDetailsAdapter;
        }

        @Override // java.lang.Runnable
        public final void run() {
            SmartcardCertPickerDialog smartcardCertPickerDialog = SmartcardCertPickerDialog.this;
            va vaVar = new va(smartcardCertPickerDialog.mActivity, R.style.CertAlertDialogTheme);
            vaVar.l(R.string.smartcard_cert_dialog_title);
            ra raVar = (ra) vaVar.b;
            raVar.q = this.val$certAdapter;
            raVar.r = null;
            raVar.w = 0;
            raVar.v = true;
            vaVar.i(R.string.smartcard_cert_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardCertPickerDialog.1.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    int checkedItemPosition = ((wa) dialogInterface).k.f.getCheckedItemPosition();
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    YubiKitCertDetails item = anonymousClass1.val$certAdapter.getItem(checkedItemPosition);
                    SmartcardCertPickerDialog smartcardCertPickerDialog2 = SmartcardCertPickerDialog.this;
                    if (item == null) {
                        ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) smartcardCertPickerDialog2.mCancelCbaCallback).onCancel();
                        int i2 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.error("SmartcardCertPickerDialog:createDialog", "Could not retrieve info for selected certificate entry.", null);
                    } else {
                        AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass3 anonymousClass3 = (AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass3) smartcardCertPickerDialog2.mPositiveButtonListener;
                        AbstractSmartcardCertBasedAuthChallengeHandler abstractSmartcardCertBasedAuthChallengeHandler = AbstractSmartcardCertBasedAuthChallengeHandler.this;
                        DialogHolder dialogHolder = abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder;
                        ClientCertRequest clientCertRequest = anonymousClass3.val$request;
                        dialogHolder.showPinDialog(abstractSmartcardCertBasedAuthChallengeHandler.getSmartcardPinDialogPositiveButtonListener(item, clientCertRequest), new AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2(clientCertRequest));
                    }
                }
            });
            vaVar.f(R.string.smartcard_cert_dialog_negative_button, new SmartcardPromptDialog.AnonymousClass1.DialogInterfaceOnClickListenerC00071(this, 1));
            wa waVarC = vaVar.c();
            final AlertController$RecycleListView alertController$RecycleListView = waVarC.k.f;
            alertController$RecycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardCertPickerDialog.1.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    alertController$RecycleListView.setItemChecked(i, true);
                    AnonymousClass1.this.val$certAdapter.notifyDataSetChanged();
                }
            });
            waVarC.setCanceledOnTouchOutside(false);
            waVarC.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardCertPickerDialog.1.4
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) SmartcardCertPickerDialog.this.mCancelCbaCallback).onCancel();
                }
            });
            smartcardCertPickerDialog.mDialog = waVarC;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class CertDetailsAdapter extends ArrayAdapter<YubiKitCertDetails> {
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(R.layout.certificate_row_layout, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.subjectText);
            TextView textView2 = (TextView) view.findViewById(R.id.issuerText);
            X509Certificate certificate = getItem(i).getCertificate();
            textView.setText(certificate.getSubjectDN().getName());
            textView2.setText(certificate.getIssuerDN().getName());
            ((RadioButton) view.findViewById(R.id.radioButton)).setChecked(i == ((ListView) viewGroup).getCheckedItemPosition());
            return view;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface PositiveButtonListener {
    }

    public SmartcardCertPickerDialog(ArrayList arrayList, PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback, u uVar) {
        super(uVar);
        this.mPositiveButtonListener = positiveButtonListener;
        this.mCancelCbaCallback = iCancelCbaCallback;
        uVar.runOnUiThread(new AnonymousClass1(new CertDetailsAdapter(uVar, 0, arrayList)));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
        ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) this.mCancelCbaCallback).onCancel();
    }
}
