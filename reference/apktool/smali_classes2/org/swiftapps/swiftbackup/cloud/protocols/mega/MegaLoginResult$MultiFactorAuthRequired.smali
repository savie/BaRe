.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;
.super Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiFactorAuthRequired"
.end annotation


# instance fields
.field private final e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;->e:Ljava/lang/Exception;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getE()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;->e:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;->e:Ljava/lang/Exception;

    .line 8
    .line 9
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ": "

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
