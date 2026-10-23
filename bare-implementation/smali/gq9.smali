.class public final Lgq9;
.super Ls51;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lgq9;

.field public static final e:Lgq9;

.field public static final f:Lgq9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lgq9;

    .line 2
    .line 3
    const-string v1, "AES_128_GCM"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Ls51;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lgq9;->d:Lgq9;

    .line 10
    .line 11
    new-instance v0, Lgq9;

    .line 12
    .line 13
    const-string v1, "AES_256_GCM"

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v0, v1, v2}, Ls51;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lgq9;->e:Lgq9;

    .line 20
    .line 21
    new-instance v0, Lgq9;

    .line 22
    .line 23
    const-string v1, "CHACHA20_POLY1305"

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v0, v1, v2}, Ls51;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lgq9;->f:Lgq9;

    .line 30
    .line 31
    return-void
.end method
