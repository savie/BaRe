.class public final Lf32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic a:Lnh;


# direct methods
.method public constructor <init>(Lnh;Lg32;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf32;->a:Lnh;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/credentials/GetCredentialException;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "CredManProvService"

    .line 7
    .line 8
    const-string v1, "GetCredentialResponse error returned from framework"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v0}, Lcy0;->J(Ljava/lang/CharSequence;Ljava/lang/String;)Lwv3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lf32;->a:Lnh;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lnh;->onError(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "CredManProvService"

    .line 7
    .line 8
    const-string v1, "GetCredentialResponse returned from framework"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lbw3;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/credentials/Credential;->getType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lpe4;->h(Landroid/os/Bundle;Ljava/lang/String;)Lao;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Lbw3;-><init>(Lao;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lf32;->a:Lnh;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lnh;->onResult(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
