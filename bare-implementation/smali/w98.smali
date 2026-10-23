.class public interface abstract Lw98;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final A:Lc6;

.field public static final B:Ld6;

.field public static final C:Le6;

.field public static final D:Lf6;

.field public static final z:Lb6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb6;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lw98;->z:Lb6;

    .line 9
    .line 10
    new-instance v0, Lc6;

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lc6;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lw98;->A:Lc6;

    .line 18
    .line 19
    new-instance v0, Ld6;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lw98;->B:Ld6;

    .line 25
    .line 26
    new-instance v0, Le6;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lw98;->C:Le6;

    .line 32
    .line 33
    new-instance v0, Lf6;

    .line 34
    .line 35
    const/16 v1, 0x12

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lf6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lw98;->D:Lf6;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(Lv98;Ly98;Z)V
.end method
