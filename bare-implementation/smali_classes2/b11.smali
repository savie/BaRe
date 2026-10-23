.class public abstract Lb11;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lix6;

    .line 5
    .line 6
    invoke-direct {v0}, Lix6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb11;->e:Lix6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public j(Ljava/util/List;Z)V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lz01;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lz01;-><init>(Lb11;Ljava/util/List;ZLjv1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 10
    .line 11
    .line 12
    return-void
.end method
