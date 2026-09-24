.class public final synthetic Lql;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkh6;

.field public final synthetic c:J

.field public final synthetic d:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLmt3;I)V
    .locals 0

    .line 1
    iput p5, p0, Lql;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lql;->b:Lkh6;

    .line 4
    .line 5
    iput-wide p2, p0, Lql;->c:J

    .line 6
    .line 7
    iput-object p4, p0, Lql;->d:Lmt3;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lql;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lql;->d:Lmt3;

    .line 6
    .line 7
    iget-wide v3, p0, Lql;->c:J

    .line 8
    .line 9
    iget-object p0, p0, Lql;->b:Lkh6;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Lqv;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    iget-wide p0, p0, Lkh6;->a:J

    .line 23
    .line 24
    add-long/2addr p0, v5

    .line 25
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v2, p0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    check-cast v2, Lxk;

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    iget-wide p0, p0, Lkh6;->a:J

    .line 46
    .line 47
    add-long/2addr p0, v5

    .line 48
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v2, p0}, Lxk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
