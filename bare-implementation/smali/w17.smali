.class public final synthetic Lw17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


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
    iput-wide p1, p0, Lw17;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lh07;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Long;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    check-cast p3, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p1, Li07;->Extract:Li07;

    .line 19
    .line 20
    sget-object p2, Ll07;->Extraction:Ll07;

    .line 21
    .line 22
    sget-object p3, Lm07;->Progress:Lm07;

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    iget-wide v5, p0, Lw17;->a:J

    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Ll73;->i(JJJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const/16 v8, 0x8

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v3, p3

    .line 40
    move-wide v5, v1

    .line 41
    move-object v1, p1

    .line 42
    move-object v2, p2

    .line 43
    invoke-static/range {v0 .. v8}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0
.end method
