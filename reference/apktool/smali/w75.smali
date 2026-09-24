.class public final Lw75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ly75;


# direct methods
.method public constructor <init>(Ly75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw75;->a:Ly75;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    .line 1
    iget-object p0, p0, Lw75;->a:Ly75;

    .line 2
    .line 3
    iget-object p1, p0, Ly75;->e:Lky4;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-gez p3, :cond_1

    .line 7
    .line 8
    iget-object v1, p1, Lky4;->R:Lqo;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p1, Lky4;->c:Lbq2;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-static {p0, v1}, Ly75;->a(Ly75;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_7

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    if-gez p3, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    move-object v5, p2

    .line 53
    move v6, p3

    .line 54
    move-wide v7, p4

    .line 55
    goto :goto_6

    .line 56
    :cond_3
    :goto_2
    iget-object p0, p1, Lky4;->R:Lqo;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_4

    .line 63
    .line 64
    move-object p2, v0

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    iget-object p0, p1, Lky4;->c:Lbq2;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    move-object p2, p0

    .line 73
    :goto_3
    iget-object p0, p1, Lky4;->R:Lqo;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_5

    .line 80
    .line 81
    const/4 p0, -0x1

    .line 82
    :goto_4
    move p3, p0

    .line 83
    goto :goto_5

    .line 84
    :cond_5
    iget-object p0, p1, Lky4;->c:Lbq2;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    goto :goto_4

    .line 91
    :goto_5
    iget-object p0, p1, Lky4;->R:Lqo;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    const-wide/high16 p4, -0x8000000000000000L

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-object p0, p1, Lky4;->c:Lbq2;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 105
    .line 106
    .line 107
    move-result-wide p4

    .line 108
    goto :goto_1

    .line 109
    :goto_6
    iget-object v4, p1, Lky4;->c:Lbq2;

    .line 110
    .line 111
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-virtual {p1}, Lky4;->dismiss()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
