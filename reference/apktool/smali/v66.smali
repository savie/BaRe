.class public final Lv66;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv66;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv66;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lv66;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lv66;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv66;->b:Ljava/io/Serializable;

    .line 5
    .line 6
    iget-object p0, p0, Lv66;->c:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lc00;

    .line 12
    .line 13
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lnr8;

    .line 16
    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v0, p0, Lnr8;->c:Z

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lnr8;->e()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lnr8;->e:Ldq7;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lnr8;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x6

    .line 39
    if-gt v0, v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lnr8;->d(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :cond_1
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lnr8;->d(I)V

    .line 53
    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lnr8;->b(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void

    .line 62
    :pswitch_0
    check-cast p0, Lb76;

    .line 63
    .line 64
    iget-object v0, p0, Lb76;->c:Luv4;

    .line 65
    .line 66
    check-cast v2, Lu66;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Luv4;->d(Lu66;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    iget-object v3, v2, Lu66;->b:Lu66;

    .line 75
    .line 76
    iget-object v4, v2, Lu66;->c:Lu66;

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    iput-object v4, v0, Luv4;->a:Lu66;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iput-object v4, v3, Lu66;->c:Lu66;

    .line 84
    .line 85
    iput-object v1, v2, Lu66;->b:Lu66;

    .line 86
    .line 87
    :goto_2
    if-nez v4, :cond_5

    .line 88
    .line 89
    iput-object v3, v0, Luv4;->b:Lu66;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iput-object v3, v4, Lu66;->b:Lu66;

    .line 93
    .line 94
    iput-object v1, v2, Lu66;->c:Lu66;

    .line 95
    .line 96
    :cond_6
    :goto_3
    invoke-virtual {p0, v2}, Lb76;->f(Lu66;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
