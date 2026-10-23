.class public abstract Ltp9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkt9;

.field public static final b:Lkt9;

.field public static final c:Los9;

.field public static final d:Lgs9;

.field public static final e:Lgh9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkt9;

    .line 2
    .line 3
    const-class v1, Lfq9;

    .line 4
    .line 5
    const-class v2, Lca9;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ltp9;->a:Lkt9;

    .line 11
    .line 12
    new-instance v0, Lkt9;

    .line 13
    .line 14
    const-class v1, Lnq9;

    .line 15
    .line 16
    const-class v2, Lba9;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ltp9;->b:Lkt9;

    .line 22
    .line 23
    invoke-static {}, Ltx9;->B()La89;

    .line 24
    .line 25
    .line 26
    new-instance v0, Los9;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    const-string v2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Ltp9;->c:Los9;

    .line 35
    .line 36
    invoke-static {}, Lwx9;->E()La89;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lgs9;

    .line 40
    .line 41
    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Ltp9;->d:Lgs9;

    .line 48
    .line 49
    new-instance v0, Lgh9;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, v1}, Lgh9;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Ltp9;->e:Lgh9;

    .line 56
    .line 57
    return-void
.end method
