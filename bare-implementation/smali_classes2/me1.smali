.class public final synthetic Lme1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lke;

.field public final synthetic b:Lsd1;

.field public final synthetic c:Lwe1;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lke;Lsd1;Lwe1;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lme1;->a:Lke;

    .line 5
    .line 6
    iput-object p2, p0, Lme1;->b:Lsd1;

    .line 7
    .line 8
    iput-object p3, p0, Lme1;->c:Lwe1;

    .line 9
    .line 10
    iput-wide p4, p0, Lme1;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v0, p0, Lme1;->c:Lwe1;

    .line 4
    .line 5
    iget-object v0, v0, Lwe1;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    :goto_0
    invoke-static {v1, v2}, Lwe1;->n(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-wide v1, p0, Lme1;->d:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Lwe1;->n(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v1, 0x7f13011d

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lme1;->a:Lke;

    .line 41
    .line 42
    iget-object p0, p0, Lme1;->b:Lsd1;

    .line 43
    .line 44
    invoke-virtual {v0, p0, p1}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object p0
.end method
