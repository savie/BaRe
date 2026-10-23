.class public final synthetic Lby6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lcy6;

.field public final synthetic b:Lcy0;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcy6;Lcy0;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lby6;->a:Lcy6;

    .line 5
    .line 6
    iput-object p2, p0, Lby6;->b:Lcy0;

    .line 7
    .line 8
    iput-object p3, p0, Lby6;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lh07;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Long;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v5

    .line 10
    check-cast p3, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-ltz p1, :cond_3

    .line 23
    .line 24
    sget-object v1, Li07;->Create:Li07;

    .line 25
    .line 26
    iget-object p1, p0, Lby6;->a:Lcy6;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object p1, Ll07;->Encryption:Ll07;

    .line 31
    .line 32
    :goto_0
    move-object v2, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    sget-object p1, Loy6;->j:Loy6;

    .line 35
    .line 36
    iget-object p2, p0, Lby6;->b:Lcy0;

    .line 37
    .line 38
    invoke-static {p2, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget-object p1, Ll07;->Tar:Ll07;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Ll07;->Compression:Ll07;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_1
    sget-object v3, Lm07;->Progress:Lm07;

    .line 51
    .line 52
    iget-object p0, p0, Lby6;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {p0}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ley6;

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    iget-object p0, p0, Ley6;->a:Ljava/lang/String;

    .line 63
    .line 64
    :goto_2
    move-object v4, p0

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    const/4 v7, 0x0

    .line 69
    invoke-static/range {v0 .. v7}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 73
    .line 74
    return-object p0
.end method
