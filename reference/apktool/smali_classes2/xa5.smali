.class public final synthetic Lxa5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:Lz95;

.field public final synthetic c:Llh6;


# direct methods
.method public synthetic constructor <init>(Lkh6;Lz95;Llh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxa5;->a:Lkh6;

    .line 5
    .line 6
    iput-object p2, p0, Lxa5;->b:Lz95;

    .line 7
    .line 8
    iput-object p3, p0, Lxa5;->c:Llh6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lib5;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxa5;->a:Lkh6;

    .line 7
    .line 8
    iget-wide v1, v0, Lkh6;->a:J

    .line 9
    .line 10
    iget v3, p1, Lib5;->a:I

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    add-long/2addr v1, v3

    .line 14
    iput-wide v1, v0, Lkh6;->a:J

    .line 15
    .line 16
    iget-object v0, p0, Lxa5;->b:Lz95;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lz95;->a(J)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lib5;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p0, p0, Lxa5;->c:Llh6;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Llh6;->a:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
