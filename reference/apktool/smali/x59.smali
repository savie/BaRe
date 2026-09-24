.class public final Lx59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lnh;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:J

.field public j:Z

.field public k:Lua9;

.field public final l:Ljava/util/List;

.field public m:Lz59;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lnh;Ljava/lang/String;JJLjava/util/ArrayList;Lx89;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx59;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lx59;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lx59;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lx59;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lx59;->e:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p6, Lnh;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    new-instance p2, Lnh;

    .line 19
    .line 20
    invoke-direct {p2}, Lnh;-><init>()V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p3, p2, Lnh;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p3, Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object p2, p0, Lx59;->f:Lnh;

    .line 33
    .line 34
    iput-object p7, p0, Lx59;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-wide p8, p0, Lx59;->h:J

    .line 37
    .line 38
    iput-wide p10, p0, Lx59;->i:J

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lx59;->j:Z

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lx59;->k:Lua9;

    .line 45
    .line 46
    iput-object p12, p0, Lx59;->l:Ljava/util/List;

    .line 47
    .line 48
    iput-object p13, p0, Lx59;->m:Lz59;

    .line 49
    .line 50
    return-void
.end method
