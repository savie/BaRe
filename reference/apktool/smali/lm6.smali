.class public final synthetic Llm6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:Liu;


# direct methods
.method public synthetic constructor <init>(JJLiu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Llm6;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Llm6;->b:J

    .line 7
    .line 8
    iput-object p5, p0, Llm6;->c:Liu;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-wide v2, p0, Llm6;->a:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Llm6;->c:Liu;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-wide v4, p0, Llm6;->b:J

    .line 18
    .line 19
    invoke-static {v4, v5, v2, v3, v0}, Leq;->c(JJLjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
