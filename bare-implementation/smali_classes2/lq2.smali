.class public final synthetic Llq2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lmq2;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lmq2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llq2;->a:Lmq2;

    .line 5
    .line 6
    iput-wide p2, p0, Llq2;->b:J

    .line 7
    .line 8
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
    iget-wide v2, p0, Llq2;->b:J

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    iget-object p0, p0, Llq2;->a:Lmq2;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lmq2;->a(J)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lbe8;->a:Lbe8;

    .line 16
    .line 17
    return-object p0
.end method
