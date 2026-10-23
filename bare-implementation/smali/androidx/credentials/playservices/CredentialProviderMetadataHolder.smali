.class public final Landroidx/credentials/playservices/CredentialProviderMetadataHolder;
.super Landroid/app/Service;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;
    }
.end annotation


# instance fields
.field private final binder:Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;-><init>(Landroidx/credentials/playservices/CredentialProviderMetadataHolder;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder;->binder:Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder;->binder:Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;

    .line 5
    .line 6
    return-object p0
.end method
