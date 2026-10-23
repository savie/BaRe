.class public final synthetic Lsw1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lsw1;->a:J

    .line 5
    .line 6
    iput p1, p0, Lsw1;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lsw1;->b:I

    .line 2
    .line 3
    check-cast p1, Luw1;

    .line 4
    .line 5
    iget-wide v1, p0, Lsw1;->a:J

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Luw1;->a(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
