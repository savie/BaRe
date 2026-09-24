.class public abstract Lvs1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lm61;

.field public static final b:Lm61;

.field public static final c:Lm61;

.field public static final d:Lm61;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ".info"

    .line 2
    .line 3
    invoke-static {v0}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvs1;->a:Lm61;

    .line 8
    .line 9
    const-string v0, "serverTimeOffset"

    .line 10
    .line 11
    invoke-static {v0}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lvs1;->b:Lm61;

    .line 16
    .line 17
    const-string v0, "authenticated"

    .line 18
    .line 19
    invoke-static {v0}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lvs1;->c:Lm61;

    .line 24
    .line 25
    const-string v0, "connected"

    .line 26
    .line 27
    invoke-static {v0}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lvs1;->d:Lm61;

    .line 32
    .line 33
    return-void
.end method
