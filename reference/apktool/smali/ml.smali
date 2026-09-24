.class public final synthetic Lml;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkh6;

.field public final synthetic c:J

.field public final synthetic d:Lxk;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLxk;I)V
    .locals 0

    .line 1
    iput p5, p0, Lml;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lml;->b:Lkh6;

    .line 4
    .line 5
    iput-wide p2, p0, Lml;->c:J

    .line 6
    .line 7
    iput-object p4, p0, Lml;->d:Lxk;

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
    iget v0, p0, Lml;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lml;->d:Lxk;

    .line 6
    .line 7
    iget-wide v3, p0, Lml;->c:J

    .line 8
    .line 9
    iget-object p0, p0, Lml;->b:Lkh6;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-wide p0, p0, Lkh6;->a:J

    .line 21
    .line 22
    add-long/2addr p0, v5

    .line 23
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v2, p0}, Lxk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    iget-wide p0, p0, Lkh6;->a:J

    .line 36
    .line 37
    add-long/2addr p0, v5

    .line 38
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Lxk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
