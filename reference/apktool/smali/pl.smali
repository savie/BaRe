.class public final synthetic Lpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:J

.field public final synthetic c:Lxk;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLxk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpl;->a:Lkh6;

    .line 5
    .line 6
    iput-wide p2, p0, Lpl;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lpl;->c:Lxk;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lpl;->a:Lkh6;

    .line 8
    .line 9
    iget-wide v2, p1, Lkh6;->a:J

    .line 10
    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-wide v0, p0, Lpl;->b:J

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lpl;->c:Lxk;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lxk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lbe8;->a:Lbe8;

    .line 28
    .line 29
    return-object p0
.end method
