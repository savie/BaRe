.class public final Lub2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lub2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lub2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lub2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    sget-object v2, Lyx1;->a:Lyx1;

    .line 6
    .line 7
    iget-object p0, p0, Lub2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lq87;

    .line 13
    .line 14
    check-cast p0, Lkd7;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lkd7;->h:Lq87;

    .line 20
    .line 21
    iget-boolean v0, p0, Lkd7;->j:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lkd7;->j:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lkd7;->c()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p1, Lq87;->a:Lu87;

    .line 32
    .line 33
    iget-object p1, p1, Lu87;->a:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v0, Lid7;->a:Lid7;

    .line 36
    .line 37
    invoke-static {p0, p1, v0, p2}, Lkd7;->a(Lkd7;Ljava/lang/String;Lid7;Ljv1;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-ne p0, v2, :cond_1

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    :cond_1
    return-object v1

    .line 45
    :pswitch_0
    check-cast p1, Lbe8;

    .line 46
    .line 47
    check-cast p0, Lic2;

    .line 48
    .line 49
    iget-object p1, p0, Lic2;->h:Ltr9;

    .line 50
    .line 51
    invoke-virtual {p1}, Ltr9;->c()Lem7;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    instance-of p1, p1, Lne3;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-static {p0, p1, p2}, Lic2;->e(Lic2;ZLjv1;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-ne p0, v2, :cond_2

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    :cond_2
    return-object v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
