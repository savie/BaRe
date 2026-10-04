package com.bare.messagescalls.conversationsview;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.messagescalls.conversations.ConversationState;
import com.bare.messagescalls.conversations.MessagesConversationRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * P3 shallow boundary for the Reference conversation list.
 *
 * The Reference activity currently terminates during onCreate after entering
 * this screen path. No conversation provider/query behavior is fabricated.
 */
public final class ConversationsActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.conversations_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(new ConversationAdapter());
    }

    private final class ConversationAdapter extends RecyclerView.Adapter<ConversationAdapter.Holder> {
        private final List<ConversationState> items = new ArrayList<>();
        ConversationAdapter(){
            new Thread(() -> {
                List<ConversationState> value = new MessagesConversationRepository(ConversationsActivity.this).getConversations(true);
                runOnUiThread(() -> { items.clear(); items.addAll(value); notifyDataSetChanged(); });
            }).start();
        }
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent,int type){
            android.widget.LinearLayout row=new android.widget.LinearLayout(parent.getContext());
            row.setOrientation(android.widget.LinearLayout.VERTICAL);
            int p=(int)(16*parent.getResources().getDisplayMetrics().density); row.setPadding(p,p,p,p);
            android.widget.TextView title=new android.widget.TextView(parent.getContext());
            android.widget.TextView summary=new android.widget.TextView(parent.getContext());
            row.addView(title); row.addView(summary); return new Holder(row,title,summary);
        }
        @Override public void onBindViewHolder(Holder holder,int position){
            ConversationState item=items.get(position);
            holder.title.setText(item.getTitle()==null||item.getTitle().isEmpty()?getString(R.string.messages):item.getTitle());
            holder.summary.setText(getString(R.string.x_messages,String.valueOf(item.getMessageCount())));
            holder.itemView.setOnClickListener(v -> {
                android.content.Intent intent=new android.content.Intent(ConversationsActivity.this,ChatActivity.class);
                intent.putExtra("extra_conversation_thread_id",Long.parseLong(item.getThreadId()));
                intent.putExtra("extra_conversation_title",item.getTitle());
                startActivity(intent);
            });
        }
        @Override public int getItemCount(){return items.size();}
        final class Holder extends RecyclerView.ViewHolder {
            final android.widget.TextView title,summary;
            Holder(android.view.View v,android.widget.TextView t,android.widget.TextView s){super(v);title=t;summary=s;}
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
