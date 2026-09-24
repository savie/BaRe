.class public final Lex1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lex1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 3

    .line 1
    iget p0, p0, Lex1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lhw7;

    .line 7
    .line 8
    invoke-virtual {p1}, Lbs2;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lbs2;->g()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcx7;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lbs2;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lwj7;

    .line 26
    .line 27
    iget-object v2, v1, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v1, v0, p0, v2}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lbs2;->a(Lon5;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Lbs2;->b()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lbs2;->g()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lbs2;->a(Lon5;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    check-cast p2, Ldv2;

    .line 58
    .line 59
    invoke-virtual {p1}, Lbs2;->g()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
