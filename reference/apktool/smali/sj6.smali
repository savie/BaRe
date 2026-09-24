.class public final Lsj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcl6;


# instance fields
.field public final synthetic a:Lgy5;

.field public final synthetic b:J

.field public final synthetic c:Lci8;

.field public final synthetic d:Lwj6;


# direct methods
.method public constructor <init>(Lwj6;Lgy5;JLci8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsj6;->d:Lwj6;

    .line 5
    .line 6
    iput-object p2, p0, Lsj6;->a:Lgy5;

    .line 7
    .line 8
    iput-wide p3, p0, Lsj6;->b:J

    .line 9
    .line 10
    iput-object p5, p0, Lsj6;->c:Lci8;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Lwc2;->b(Ljava/lang/String;Ljava/lang/String;)Lwc2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p2, p0, Lsj6;->d:Lwj6;

    .line 10
    .line 11
    const-string v0, "setValue"

    .line 12
    .line 13
    iget-object v1, p0, Lsj6;->a:Lgy5;

    .line 14
    .line 15
    invoke-static {p2, v0, v1, p1}, Lwj6;->b(Lwj6;Ljava/lang/String;Lgy5;Lwc2;)V

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lsj6;->b:J

    .line 19
    .line 20
    invoke-static {p2, v2, v3, v1, p1}, Lwj6;->c(Lwj6;JLgy5;Lwc2;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lsj6;->c:Lci8;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lgy5;->i()Lm61;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v2, Lm61;->d:Lm61;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Lgy5;->l()Lgy5;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lzc2;

    .line 46
    .line 47
    invoke-direct {v1, p2, v0}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v0, Lzc2;

    .line 52
    .line 53
    invoke-direct {v0, p2, v1}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 54
    .line 55
    .line 56
    move-object v1, v0

    .line 57
    :goto_1
    new-instance v0, Ls60;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1, v1}, Ls60;-><init>(Lci8;Lwc2;Lzc2;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lwj6;->i(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
