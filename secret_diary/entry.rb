class Entry

  attr_reader :diary, :entry

  def initialize
    @entries = []
    @entry = entry
  end

  def add_entry(entry, diary)
    raise "Diary is locked!" if diary.lock
    @entries.push(entry)
  end

  def get_entries(diary)
    raise "Diary is locked!" if diary.lock
    @entries
  end

end







