.class public final Llr5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lgc8;

.field public final b:Lz77;

.field public final c:Lv86;

.field public final d:Lem4;

.field public final e:Z


# direct methods
.method public constructor <init>(Lgc8;Lz77;Lv86;Lem4;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llr5;->a:Lgc8;

    .line 5
    .line 6
    iput-object p2, p0, Llr5;->b:Lz77;

    .line 7
    .line 8
    iput-object p3, p0, Llr5;->c:Lv86;

    .line 9
    .line 10
    iput-object p4, p0, Llr5;->d:Lem4;

    .line 11
    .line 12
    iput-boolean p5, p0, Llr5;->e:Z

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lgc8;Lz86;Lv86;Z)Llr5;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lz86;->a:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_1
    move-object v3, v0

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    new-instance v0, Lz77;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lz77;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :goto_2
    new-instance v1, Llr5;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v2, p0

    .line 22
    move-object v4, p2

    .line 23
    move v6, p3

    .line 24
    invoke-direct/range {v1 .. v6}, Llr5;-><init>(Lgc8;Lz77;Lv86;Lem4;Z)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method
