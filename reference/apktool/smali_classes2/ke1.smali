.class public final synthetic Lke1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lwe1;

.field public final synthetic b:Ltb1;

.field public final synthetic c:Lsd1;

.field public final synthetic d:Lke;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lwe1;Ltb1;Lsd1;Lke;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lke1;->a:Lwe1;

    .line 5
    .line 6
    iput-object p2, p0, Lke1;->b:Ltb1;

    .line 7
    .line 8
    iput-object p3, p0, Lke1;->c:Lsd1;

    .line 9
    .line 10
    iput-object p4, p0, Lke1;->d:Lke;

    .line 11
    .line 12
    iput-wide p5, p0, Lke1;->e:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v3, p0, Lke1;->d:Lke;

    .line 2
    .line 3
    iget-wide v4, p0, Lke1;->e:J

    .line 4
    .line 5
    iget-object v0, p0, Lke1;->a:Lwe1;

    .line 6
    .line 7
    iget-object v1, p0, Lke1;->b:Ltb1;

    .line 8
    .line 9
    iget-object v2, p0, Lke1;->c:Lsd1;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lwe1;->y(Lwe1;Ltb1;Lsd1;Lke;J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
