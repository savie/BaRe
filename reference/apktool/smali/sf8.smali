.class public final synthetic Lsf8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lsf8;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lsf8;->a:J

    .line 2
    .line 3
    check-cast p1, Luf8;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Luf8$a;->o0(JLuf8;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
