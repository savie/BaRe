.class public final Lww1;
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
    iput p1, p0, Lww1;->a:I

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
    .locals 5

    .line 1
    iget p0, p0, Lww1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lwj7;

    .line 9
    .line 10
    check-cast p2, Ls94;

    .line 11
    .line 12
    iget-object v0, p1, Lbs2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lj75;

    .line 15
    .line 16
    iget-object v1, v0, Lj75;->k:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lky3;

    .line 19
    .line 20
    const-class v2, Ls94;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lbs2;->g()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lbs2;->g()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    const v3, 0xfffc

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lwj7;->a(C)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v3, p2, Lon5;->a:Lon5;

    .line 52
    .line 53
    instance-of v3, v3, Llv4;

    .line 54
    .line 55
    iget-object v4, v0, Lj75;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lhx0;

    .line 58
    .line 59
    iget-object p2, p2, Ls94;->f:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lbs2;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ldi4;

    .line 67
    .line 68
    sget-object v4, Lxx3;->b:Lq86;

    .line 69
    .line 70
    invoke-virtual {v4, p1, p2}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p2, Lxx3;->c:Lq86;

    .line 74
    .line 75
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p2, p1, v3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object p2, Lxx3;->d:Lq86;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p2, p1, v3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v0, p1}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-static {p0, p1, v2, p2}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    :pswitch_0
    check-cast p2, La28;

    .line 103
    .line 104
    invoke-virtual {p1}, Lbs2;->b()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lbs2;->g()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    iget-object v0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lwj7;

    .line 114
    .line 115
    const/16 v1, 0xa0

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lwj7;->a(C)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lbs2;->a(Lon5;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
