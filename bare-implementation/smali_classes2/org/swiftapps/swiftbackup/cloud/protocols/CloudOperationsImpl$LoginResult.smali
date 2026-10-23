.class public abstract Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Failed;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownError;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->e:Ljava/lang/Exception;

    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;-><init>(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final getE()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->e:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->e:Ljava/lang/Exception;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->e:Ljava/lang/Exception;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, ": "

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
