.class public final Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/CredentialProviderMetadataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/CredentialProviderMetadataHolder;


# direct methods
.method public constructor <init>(Landroidx/credentials/playservices/CredentialProviderMetadataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;->this$0:Landroidx/credentials/playservices/CredentialProviderMetadataHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getService()Landroidx/credentials/playservices/CredentialProviderMetadataHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;->this$0:Landroidx/credentials/playservices/CredentialProviderMetadataHolder;

    .line 2
    .line 3
    return-object p0
.end method
