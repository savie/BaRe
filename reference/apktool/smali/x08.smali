.class public abstract Lx08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lbe;

.field public static final b:Lbe;

.field public static final c:Lbe;

.field public static final d:Lbe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lbe;-><init>(Lns0;Z)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx08;->a:Lbe;

    .line 9
    .line 10
    new-instance v0, Lbe;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Lbe;-><init>(Lns0;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lx08;->b:Lbe;

    .line 17
    .line 18
    new-instance v0, Lbe;

    .line 19
    .line 20
    sget-object v1, Lns0;->d:Lns0;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lbe;-><init>(Lns0;Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lx08;->c:Lbe;

    .line 26
    .line 27
    new-instance v0, Lbe;

    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, Lbe;-><init>(Lns0;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lx08;->d:Lbe;

    .line 33
    .line 34
    return-void
.end method
