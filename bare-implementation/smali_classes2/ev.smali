.class public final synthetic Lev;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lev;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lev;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lev;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lev;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lev;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lev;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lmt3;

    .line 13
    .line 14
    check-cast v2, Lj57;

    .line 15
    .line 16
    check-cast p1, Ljava/util/Set;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 26
    .line 27
    iget-object p1, v2, Lj57;->o:Lu10;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v1

    .line 35
    :pswitch_0
    check-cast p0, Lnv6;

    .line 36
    .line 37
    check-cast v2, Ljv6;

    .line 38
    .line 39
    check-cast p1, Lfw6;

    .line 40
    .line 41
    invoke-static {p0, v2, p1}, Lnv6;->e(Lnv6;Ljv6;Lfw6;)Lbe8;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_1
    check-cast p0, Lpj2;

    .line 47
    .line 48
    check-cast v2, Lwj2;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 53
    .line 54
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lpj2;->b:Lmk2;

    .line 61
    .line 62
    iget-object v0, v2, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Lmk2;->p(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-object v1

    .line 68
    :pswitch_2
    check-cast p0, Lmv;

    .line 69
    .line 70
    check-cast v2, Lkh6;

    .line 71
    .line 72
    check-cast p1, Lvg;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-wide v2, v2, Lkh6;->a:J

    .line 78
    .line 79
    iget-wide v4, p1, Lvg;->b:J

    .line 80
    .line 81
    add-long/2addr v2, v4

    .line 82
    invoke-virtual {p0, v2, v3}, Lmv;->d(J)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
