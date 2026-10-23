.class public final synthetic Lo00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq00;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILq00;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo00;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lo00;->b:Lq00;

    .line 7
    .line 8
    iput-object p3, p0, Lo00;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lo00;->b:Lq00;

    .line 2
    .line 3
    iget-object v1, v0, Lq00;->e:Lex6;

    .line 4
    .line 5
    iget v2, v0, Lq00;->h:I

    .line 6
    .line 7
    iget v3, p0, Lo00;->a:I

    .line 8
    .line 9
    sget-object v4, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    if-eq v3, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lo00;->c:Ljava/lang/Object;

    .line 15
    .line 16
    instance-of v2, p0, Lbn6;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    move-object v6, p0

    .line 21
    check-cast v6, Lv00;

    .line 22
    .line 23
    iget-object v5, v0, Lq00;->f:Ln00;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-static/range {v5 .. v10}, Ln00;->a(Ln00;Lv00;Ljava/lang/String;ZLjava/lang/String;I)Ln00;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v0, Lq00;->f:Ln00;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    iget-object v5, v0, Lq00;->f:Ln00;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_2
    move-object v9, v2

    .line 61
    const/4 v10, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-static/range {v5 .. v10}, Ln00;->a(Ln00;Lv00;Ljava/lang/String;ZLjava/lang/String;I)Ln00;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iput-object p0, v0, Lq00;->f:Ln00;

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    return-object v4
.end method
