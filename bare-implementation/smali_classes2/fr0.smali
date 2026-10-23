.class public abstract Lfr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static a:Ljava/lang/Integer;

.field public static final b:Lgv7;

.field public static final c:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb7;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lfr0;->b:Lgv7;

    .line 14
    .line 15
    new-instance v0, Lov;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lgv7;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lfr0;->c:Lgv7;

    .line 27
    .line 28
    return-void
.end method
