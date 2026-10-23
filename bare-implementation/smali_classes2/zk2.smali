.class public final Lzk2;
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
    iput p1, p0, Lzk2;->a:I

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
    .locals 0

    .line 1
    iget p0, p0, Lzk2;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ls54;

    .line 7
    .line 8
    iget-object p0, p1, Ls54;->b:Lu54;

    .line 9
    .line 10
    invoke-virtual {p0}, Lu54;->getOrder()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p2, Ls54;

    .line 19
    .line 20
    iget-object p1, p2, Ls54;->b:Lu54;

    .line 21
    .line 22
    invoke-virtual {p1}, Lu54;->getOrder()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :pswitch_0
    check-cast p1, Lzk3;

    .line 36
    .line 37
    iget-object p0, p1, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSetupCreationTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p2, Lzk3;

    .line 48
    .line 49
    iget-object p1, p2, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSetupCreationTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :pswitch_1
    check-cast p1, Lal2;

    .line 65
    .line 66
    check-cast p2, Lal2;

    .line 67
    .line 68
    iget p0, p1, Lal2;->a:I

    .line 69
    .line 70
    iget p1, p2, Lal2;->a:I

    .line 71
    .line 72
    sub-int/2addr p0, p1

    .line 73
    return p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
