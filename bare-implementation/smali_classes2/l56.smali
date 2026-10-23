.class public final synthetic Ll56;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lfh6;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lfh6;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll56;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll56;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ll56;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ll56;->d:Lfh6;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Ll56;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ll56;->d:Lfh6;

    .line 4
    .line 5
    iget-object v1, p0, Ll56;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ll56;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lso7;

    .line 13
    .line 14
    check-cast v1, Lqo7;

    .line 15
    .line 16
    check-cast v0, Lpo7;

    .line 17
    .line 18
    iget-object p1, p0, Lso7;->b:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Lso7;->c:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    sget-boolean p1, Lmp6;->g:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, v1, Lgm7;->j:Lqt3;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lfh6;->b()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_0
    check-cast p0, Ln56;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    check-cast v0, Lm56;

    .line 53
    .line 54
    iget-object p1, p0, Ln56;->l:Ljava/util/LinkedHashSet;

    .line 55
    .line 56
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v0}, Lfh6;->b()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, -0x1

    .line 78
    if-eq p1, v1, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v0, 0x0

    .line 82
    :goto_2
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lhg6;->f(I)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
