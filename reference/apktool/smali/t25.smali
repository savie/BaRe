.class public final Lt25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lb35;


# instance fields
.field public final synthetic a:Lpo4;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcd;

.field public final synthetic d:Lc35;


# direct methods
.method public constructor <init>(Lc35;Lpo4;Ljava/lang/Object;Lcd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt25;->d:Lc35;

    .line 5
    .line 6
    iput-object p2, p0, Lt25;->a:Lpo4;

    .line 7
    .line 8
    iput-object p3, p0, Lt25;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lt25;->c:Lcd;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt25;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lt25;->c:Lcd;

    .line 4
    .line 5
    iget-object v2, p0, Lt25;->d:Lc35;

    .line 6
    .line 7
    iget-object p0, p0, Lt25;->a:Lpo4;

    .line 8
    .line 9
    invoke-virtual {v2, p0, v0, v1}, Lc35;->a(Lpo4;Ljava/lang/Object;Lcd;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
