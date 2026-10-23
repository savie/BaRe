.class public final Llw1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Llw1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Llw1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lyn8;

    .line 7
    .line 8
    iget-wide v0, p2, Lyn8;->b:J

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p1, Lyn8;

    .line 15
    .line 16
    iget-wide p1, p1, Lyn8;->b:J

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    check-cast p2, Lqv1;

    .line 28
    .line 29
    invoke-virtual {p2}, Lqv1;->getLastSmsDate()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p1, Lqv1;

    .line 38
    .line 39
    invoke-virtual {p1}, Lqv1;->getLastSmsDate()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :pswitch_1
    check-cast p1, Lbz3;

    .line 53
    .line 54
    iget-object p0, p1, Lbz3;->a:Ljava/lang/String;

    .line 55
    .line 56
    check-cast p2, Lbz3;

    .line 57
    .line 58
    iget-object p1, p2, Lbz3;->a:Ljava/lang/String;

    .line 59
    .line 60
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 61
    .line 62
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :pswitch_2
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 85
    .line 86
    check-cast p2, Landroid/view/View;

    .line 87
    .line 88
    sget-object p0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getZ()F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    cmpl-float p2, p0, p1

    .line 99
    .line 100
    if-lez p2, :cond_0

    .line 101
    .line 102
    const/4 p0, -0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    cmpg-float p0, p0, p1

    .line 105
    .line 106
    if-gez p0, :cond_1

    .line 107
    .line 108
    const/4 p0, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 p0, 0x0

    .line 111
    :goto_0
    return p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
