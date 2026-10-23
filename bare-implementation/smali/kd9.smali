.class public final Lkd9;
.super Lb19;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lct9;


# direct methods
.method public constructor <init>(Lct9;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lb19;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

    .line 6
    .line 7
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkd9;->b:Lct9;

    .line 11
    .line 12
    return-void
.end method
